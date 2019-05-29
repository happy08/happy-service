import Vue from 'vue'
import Router from 'vue-router'
import header from '@/components/common/header'
import headerService from '@/components/common/header-service'

import footer from '@/components/common/footer'
import footerService from '@/components/common/footer-service'

import home from '@/components/home'
import about from '@/components/about'
import process from '@/components/process'
import project from '@/components/project'
import soul from '@/components/soul'
import repair from '@/components/repair'

import service from '@/components/service'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      components: {
        default: home,
        header: header,
        footer: footer
      }
    },
    {
      path: '/about/*',
      name: 'about',
      components: {
        default: about,
        header: header,
        footer: footer
      }
    },
    {
      path: '/process/*',
      name: 'process',
      components: {
        default: process,
        header: header,
        footer: footer
      }
    },
    {
      path: '/project',
      name: 'project',
      components: {
        default: project,
        header: header,
        footer: footer
      }
    },
    {
      path: '/soul/*',
      name: 'soul',
      components: {
        default: soul,
        header: header,
        footer: footer
      }
    },
    {
      path: '/service/*',
      name: 'service',
      components: {
        default: service,
        "header-service": headerService,
        "footer-service": footerService
      }
    },
    {
      path: '/repair/*',
      name: 'repair',
      components: {
        default: repair,
        header: header,
        footer: footer
      }
    }

  ]
})
