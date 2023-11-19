import axios from "axios"
import { defaultFormat } from "moment/moment";
import { useStorage } from '@vueuse/core';


const axiosHttp = axios.create({
    baseURL : 'http://192.168.2.110:8000'
})

axiosHttp.interceptors.request.use(
    (config) => {
        return {
            ...config,
            headers: {  
                ...(undefined != localStorage.getItem("authToken") && { Authorization: `${localStorage.getItem("authToken")}` }),
                ...config.headers
            }
        }
    },
    (error) => {
        return Promise.reject(error);
      }
);

axiosHttp.interceptors.response.use(
    (response) => {
      response.data.token && localStorage.setItem("authToken", response.data.token)
      console.log("tocker====" + localStorage.getItem("authToken"))
      return response;
    },
    (error) => {
      console.log(error)
      if (error.response.status === 401) {
      }
      return Promise.reject(error);
    }
  );


export default axiosHttp
  
