import { bootstrapApplication } from '@angular/platform-browser';
// import { appConfig } from './app/app.config';
import { App } from './app/app';
import { DateAdapter, MAT_DATE_LOCALE, NativeDateAdapter, provideNativeDateAdapter } from '@angular/material/core';
import { provideRouter } from '@angular/router';
import { routes } from './app/app.routes';

export const appConfig = {
  providers: [
    provideRouter(routes),
    provideNativeDateAdapter(),
    { provide: MAT_DATE_LOCALE, useValue: 'en-US' }
  ]
};

bootstrapApplication(App, appConfig)
  .catch((err) => console.error(err));
