<script setup lang="ts">
const props = defineProps<{
  path: string
  class: string
}>()

const customClass = props.class ?? ''
</script>

<template>
  <svg :class="['fill-current', customClass]" viewBox="0 0 24 24" aria-hidden="true" role="img">
    <path :d="path" />
  </svg>
</template>
