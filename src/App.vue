<template>
  <metainfo> </metainfo>

  <div
    class="scrollspy-example"
    data-bs-offset="0"
    data-bs-spy="scroll"
    data-bs-target="#main-nav"
    tabindex="0"
  >
    <!-- Render active component contents with vue transition -->
    <transition name="fade" mode="out-in">
      <router-view />
    </transition>

    <!-- Scroll to top -->
    <back-to-top
      visibleoffset="500"
      right="30px"
      bottom="20px"
      class="shadow-lg"
    >
      <i data-feather="chevron-up"></i>
    </back-to-top>
  </div>
</template>
<script>
// aos
// import AOS from "aos";
// import "aos/dist/aos.css";
import { useMeta } from "vue-meta";

export default {
  data: () => {
    return {
      webTitle: "Prince Kaushik - Data Scientist",
    };
  },
  setup() {
    useMeta({
      title: "Prince Kaushik - Data Scientist",
      description: "Just a passionate coder solving complex problems.",
      htmlAttrs: {
        lang: "en",
        amp: true,
      },
      twitter: {
        title: "Prince Kaushik - Data Scientist",
        description: "Just a passionate coder solving complex problems.",
        card: "summary_large_image",
        image:
          "princekaushik.github.io" + require(`@/assets/images/preview.jpg`),
      },
      og: {
        title: "Prince Kaushik - Data Scientist",
        description: "Just a passionate coder solving complex problems.",
        type: "portfolio",
        url: "princekaushik.github.io",
        image:
          "princekaushik.github.io" + require(`@/assets/images/preview.jpg`),
        site_name: "Just a passionate coder solving complex problems.",
      },
      meta: [
        {
          name: "keywords",
          content:
            "Software Developer,, machine learning, Deep learning, AI researcher, Data Science Portfolio",
        },
        {
          name: "author",
          content: "Prince Kaushik",
        },
      ],
      link: [
        {
          rel: "icon",
          href: require(`@/assets/images/RR.png`),
        },
      ],
    });
  },
  // mounted() {
  //   AOS.init();
  // },
};
</script>
<style lang="scss">
html {
  scroll-behavior: smooth;
}

body {
  position: relative;
  font-family: $default-family;
  font-size: $default-font-size;
}

::-webkit-scrollbar {
  width: 9px;
}

::-webkit-scrollbar-thumb {
  background: #363636;
}

::-webkit-scrollbar-track {
  background: #fff;
}

.btn {
  border-width: 1px;
  cursor: pointer;
  justify-content: center;
  padding: calc(0.5em - 1px) 1em;
  text-align: center;
  white-space: nowrap;
  -webkit-appearance: none;
  align-items: center;
  border-radius: 4px;
  box-shadow: none;
  display: inline-flex;
  font-size: 1rem;
  height: 2.5em;
  line-height: 1.5;
  position: relative;
  vertical-align: top;
}

.btn-primary {
  color: white;
}

a,
a:active,
a:visited {
  text-decoration: none !important;
}
</style>
