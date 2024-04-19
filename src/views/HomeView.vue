<template>
  <!-- Menu -->
  <MenuVue :links="links">> My Portfolio<span class="prim"></span></MenuVue>
  <HeroSection id="hero" pic="header.png">
    <template v-slot:welcome>Prince Kaushik - Data Scientist</template>

    I'm <b>Prince Kaushik</b>, an Experienced
    <hi-word>Data Scientist</hi-word> with over six years of experience. I
    specialize in leveraging data to solve complex problems, using clean and
    efficient code to drive actionable results.

    <template v-slot:buttons>
      <simple-button
        class="btn-primary text-white"
        url="https://www.linkedin.com/in/prince-kaushiik/"
        icon="fab linkedin-in"
        >My Profile</simple-button
      >
      <simple-button
        class="btn-dark text-white"
        url="https://github.com/princekaushik/"
        icon="fab fa-github"
        >My Github</simple-button
      >
      <simple-button
        class="btn-outline-secondary"
        url="mailto:prince.kaushiik@gmail.com"
        icon="fa-regular fa-file-lines"
        >Email me</simple-button
      >
    </template>
  </HeroSection>
  <ExperienceTable id="edu-exp" :experience="experience" />
  <SkillsGrid id="skills" :skills="skills" />
  <ProjectsGrid id="projects" :projects="projects" />
  <AwardsGrid id="awards" :awards="awards" />
  <FooterVue :links="socials" :copyright="copyright" />
</template>
<script>
import MenuVue from "@/components/shared/AppMenu.vue";
import FooterVue from "@/components/shared/AppFooter.vue";
import HeroSection from "@/components/hero/HeroSection.vue";
import SkillsGrid from "@/components/skills/SkillsGrid.vue";
import ExperienceTable from "@/components/experience/ExperienceTable.vue";
import AwardsGrid from "@/components/awards/AwardsGrid.vue";
import ProjectsGrid from "@/components/projects/ProjectsGrid.vue";

// data to fill components
import skills from "@/data/skills";
import experience from "@/data/experience";
import awards from "@/data/awards";
import projects from "@/data/projects";

import SimpleButton from "@/components/reusable/SimpleButton.vue";
import HiWord from "@/components/reusable/HighlightIt.vue";

export default {
  name: "HomeView",
  data: () => {
    return {
      delay: 100,
      links: [
        {
          name: "Home",
          url: "#hero",
        },
        {
          name: "Experience",
          url: "#edu-exp",
        },
        {
          name: "Skills",
          url: "#skills",
        },
        {
          name: "Projects",
          url: "#projects",
        },
        {
          name: "Education",
          url: "#awards",
        },
      ],
      skills,
      experience,
      awards,
      projects,
      socials: [
        {
          id: 1,
          icon: "fab linkedin-in",
          url: "https://www.linkedin.com/in/prince-kaushiik/",
        },
        {
          id: 2,
          icon: "fab github",
          url: "https://github.com/princekaushik/",
        },
      ],
      Creator: "Prince Kaushik",
    };
  },
  components: {
    MenuVue,
    FooterVue,
    HeroSection,
    SkillsGrid,
    ExperienceTable,
    AwardsGrid,
    ProjectsGrid,
    SimpleButton,
    HiWord,
  },
};
</script>
<style lang="scss" scoped>
.prim {
  color: $primary;
}
</style>
