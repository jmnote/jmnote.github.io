<!-- HomeView.vue -->
<template>
  <div class="max-w-4xl mx-auto px-4 py-8">
    <div class="flex items-center space-x-4 mb-6">
      <img src="https://github.com/jmnote.png" alt="Avatar image of GitHub user jmnote" width="100"
        class="rounded-full" />
      <div>
        <h1 class="text-2xl font-semibold">
          Hi, I'm
          <a href="https://github.com/jmnote" target="_blank" rel="noopener noreferrer"
            class="text-blue-600 dark:text-blue-400 hover:underline">Jmnote</a>,
        </h1>
        <p class="mt-1 leading-relaxed">
          a developer and open source contributor.<br />
          I enjoy building lightweight tools and documenting what I learn.
        </p>
      </div>
    </div>

    <h2 class="mt-8 text-xl font-medium">Featured Repositories</h2>
    <table class="mt-4 w-full text-left">
      <tbody>
        <tr>
          <td class="pr-4 py-2 whitespace-nowrap">
            🧱
            <a href="https://github.com/jmnote/black-screen" target="_blank" rel="noopener noreferrer"
              class="text-blue-600 dark:text-blue-400 hover:underline ml-1">
              jmnote/black-screen
            </a>
          </td>
          <td class="py-2 text-sm text-gray-600 dark:text-gray-300">
            A Chrome extension that opens a pure black screen in a new tab.
          </td>
        </tr>
        <tr>
          <td class="pr-4 py-2 whitespace-nowrap">
            🖱️
            <a href="https://github.com/jmnote/mouse-gesture" target="_blank" rel="noopener noreferrer"
              class="text-blue-600 dark:text-blue-400 hover:underline ml-1">
              jmnote/mouse-gesture
            </a>
          </td>
          <td class="py-2 text-sm text-gray-600 dark:text-gray-300">
            A Chrome extension that enables navigation using right-click mouse gestures.
          </td>
        </tr>
        <tr>
          <td class="pr-4 py-2 whitespace-nowrap">
            🎤
            <a href="https://github.com/jmnote/slides" target="_blank" rel="noopener noreferrer"
              class="text-blue-600 dark:text-blue-400 hover:underline ml-1">
              jmnote/slides
            </a>
          </td>
          <td class="py-2 text-sm text-gray-600 dark:text-gray-300">
            Slide decks from conference talks and public presentations.
          </td>
        </tr>
        <tr>
          <td class="pr-4 py-2 whitespace-nowrap">
            📦
            <a href="https://github.com/kuoss/helm-charts" target="_blank" rel="noopener noreferrer"
              class="text-blue-600 dark:text-blue-400 hover:underline ml-1">
              kuoss/helm-charts
            </a>
          </td>
          <td class="py-2 text-sm text-gray-600 dark:text-gray-300">
            Helm charts for deploying open source software to Kubernetes.
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
