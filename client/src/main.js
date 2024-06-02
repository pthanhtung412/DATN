import { createApp } from 'vue'
import { createPinia } from 'pinia'

import App from './App.vue'
import router from './Router'
import { useMainStore } from '@/stores/main.js'
import { VueAwesomePaginate } from 'vue-awesome-paginate'

import VueSplide from '@splidejs/vue-splide'
import '@splidejs/vue-splide/css'
import 'bootstrap/dist/css/bootstrap.css'
import 'vue-awesome-paginate/dist/style.css'

import './css/main.css'

// Init Pinia
const pinia = createPinia()

// Create Vue app
const app = createApp(App)
app.use(VueSplide)
app.use(VueAwesomePaginate).use(router).use(pinia).mount('#app')

// Init main store
const mainStore = useMainStore(pinia)

// Fetch sample data
mainStore.fetchSampleClients()
mainStore.fetchSampleHistory()

// Dark mode
// Uncomment, if you'd like to restore persisted darkMode setting, or use `prefers-color-scheme: dark`. Make sure to uncomment localStorage block in src/stores/darkMode.js
// import { useDarkModeStore } from './stores/darkMode'

// const darkModeStore = useDarkModeStore(pinia)

// if (
//   (!localStorage['darkMode'] && window.matchMedia('(prefers-color-scheme: dark)').matches) ||
//   localStorage['darkMode'] === '1'
// ) {
//   darkModeStore.set(true)
// }

// Default title tag
const defaultDocumentTitle = 'BCB'

// Set document title from route meta
router.afterEach((to) => {
  document.title = to.meta?.title
    ? `${to.meta.title} — ${defaultDocumentTitle}`
    : defaultDocumentTitle
})
