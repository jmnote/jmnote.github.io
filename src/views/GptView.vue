<!-- GptView.vue -->
<script setup lang="ts">
import { ref, watch, onMounted } from 'vue'

// Save to localStorage
const apiKey = ref('')
const saved = ref(false)
const saveKey = () => {
  localStorage.setItem('openapi-key', apiKey.value)
  saved.value = true
  setTimeout(() => (saved.value = false), 2000)
}
onMounted(() => {
  const stored = localStorage.getItem('openapi-key')
  if (stored) apiKey.value = stored
})

// Script & document input
const script = ref('')

const documentCount = ref(2)
const documents = ref<string[]>(['', ''])

// Sync when document count changes
watch(documentCount, (newCount) => {
  while (documents.value.length < newCount) documents.value.push('')
  while (documents.value.length > newCount) documents.value.pop()
})
</script>

<template>
  <div class="max-w-6xl mx-auto p-4">
    <!-- OpenAPI key input & save -->
    <div class="flex items-center gap-2">
      <label class="font-medium dark:text-white">OPENAPI KEY:</label>
      <input v-model="apiKey" @blur="saveKey" type="text"
        class="border rounded px-2 py-1 w-full dark:bg-gray-800 dark:border-gray-600 dark:text-white"
        placeholder="sk-..." />
      <span v-if="saved" class="text-green-600 text-sm dark:text-green-400">✔ Saved</span>
    </div>

    <!-- Script input -->
    <div class="mt-4">
      <label class="font-medium dark:text-white">Script:</label>
      <textarea v-model="script"
        class="border rounded w-full h-24 p-2 mt-1 dark:bg-gray-800 dark:border-gray-600 dark:text-white"
        placeholder="Enter script..."></textarea>
    </div>

    <!-- Document count dropdown -->
    <div class="mt-4">
      <label class="font-medium dark:text-white">Number of Documents:</label>
      <select v-model="documentCount"
        class="border rounded p-1 ml-2 dark:bg-gray-800 dark:border-gray-600 dark:text-white">
        <option v-for="n in 10" :key="n" :value="n">{{ n }}</option>
      </select>
    </div>

    <!-- Dynamic document inputs -->
    <div v-for="(doc, index) in documents" :key="index" class="mt-4">
      <label class="font-medium dark:text-white">Document {{ index + 1 }}:</label>
      <textarea v-model="documents[index]"
        class="border rounded w-full h-24 p-2 mt-1 dark:bg-gray-800 dark:border-gray-600 dark:text-white"
        placeholder="Enter document content..."></textarea>
    </div>

    <!-- Output -->
    <div class="mt-6">
      <label class="font-medium dark:text-white">Result:</label>
      <pre
        class="border rounded bg-gray-100 dark:bg-gray-900 p-3 whitespace-pre-wrap min-h-[100px] text-black dark:text-white"></pre>
    </div>
  </div>
</template>
