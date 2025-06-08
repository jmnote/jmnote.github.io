<!-- App.vue -->
<script setup lang="ts">
import { RouterLink, RouterView, useRoute } from 'vue-router'
import { ref, watch } from 'vue'
import { useDark, usePreferredDark } from '@vueuse/core'
import BaseIcon from './components/BaseIcon.vue'
import {
  mdiDice6,
  mdiImageOutline,
  mdiGithub,
  mdiWhiteBalanceSunny,
  mdiWeatherNight,
  mdiMonitor,
} from '@mdi/js'

const systemDark = usePreferredDark()
const isDark = useDark()

const route = useRoute()
const stored = localStorage.getItem('theme-mode')
const mode = ref<'system' | 'light' | 'dark'>(
  stored === 'light' || stored === 'dark' || stored === 'system' ? stored : 'system',
)

function applyTheme() {
  isDark.value = mode.value === 'dark' || (mode.value === 'system' && systemDark.value)
  localStorage.setItem('theme-mode', mode.value)
}
applyTheme()

watch(systemDark, () => {
  if (mode.value === 'system') applyTheme()
})
</script>

<template>
  <div id="app">
    <header class="fixed top-0 left-0 right-0 bg-gray-200 dark:bg-gray-800  p-4 z-50 shadow-md">
      <nav class="max-w-4xl mx-auto flex justify-between items-center">
        <!-- Left Navigation -->
        <div class="flex gap-4">
          <RouterLink to="/" class="px-3 py-1 rounded"
            :class="route.path === '/' ? 'bg-gray-100 dark:bg-gray-900' : 'hover:bg-gray-300 hover:dark:bg-gray-700'">
            Jmnote
          </RouterLink>

          <RouterLink to="/random" class="flex items-center gap-1 px-3 py-1 rounded"
            :class="route.path === '/random' ? 'bg-gray-100 dark:bg-gray-900' : 'hover:bg-gray-300 hover:dark:bg-gray-700'">
            <BaseIcon class="w-5 h-5" :path="mdiDice6" />
            Random
          </RouterLink>

          <RouterLink to="/svg" class="flex items-center gap-1 px-3 py-1 rounded"
            :class="route.path === '/svg' ? 'bg-gray-100 dark:bg-gray-900' : 'hover:bg-gray-300 hover:dark:bg-gray-700'">
            <BaseIcon class="w-5 h-5" :path="mdiImageOutline" />
            SVG
          </RouterLink>
        </div>

        <!-- Right Side -->
        <div class="flex gap-4 items-center">
          <!-- Theme toggle -->
          <div class="flex items-center bg-gray-100 dark:bg-black rounded-full p-1">
            <button @click="mode = 'system'; applyTheme()" class="p-1.5 rounded-full transition-colors"
              :class="{ 'bg-gray-200 dark:bg-gray-800 border': mode === 'system' }" aria-label="System Theme">
              <BaseIcon class="w-4 h-4" :path="mdiMonitor" />
            </button>
            <button @click="mode = 'light'; applyTheme()" class="p-1.5 rounded-full transition-colors"
              :class="{ 'bg-gray-200 dark:bg-gray-800 border': mode === 'light' }" aria-label="Light Theme">
              <BaseIcon class="w-4 h-4" :path="mdiWhiteBalanceSunny" />
            </button>
            <button @click="mode = 'dark'; applyTheme()" class="p-1.5 rounded-full transition-colors"
              :class="{ 'bg-gray-200 dark:bg-gray-800 border-1': mode === 'dark' }" aria-label="Dark Theme">
              <BaseIcon class="w-4 h-4" :path="mdiWeatherNight" />
            </button>
          </div>

          <!-- GitHub -->
          <a href="https://github.com/jmnote/jmnote.github.io" target="_blank">
            <BaseIcon class="w-6 h-6" :path="mdiGithub" />
          </a>
        </div>
      </nav>
    </header>

    <main class="pt-24">
      <RouterView />
    </main>
  </div>
</template>
