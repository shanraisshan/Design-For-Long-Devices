package com.design.util

import android.content.Context
import android.os.Handler
import android.view.View
import android.view.inputmethod.InputMethodManager
import androidx.appcompat.app.AppCompatActivity

class UiUtil {
    companion object {

        fun avoidMultipleClicks(view: View) {
            Handler().postDelayed({ view.isEnabled = true }, 1000)
        }

        fun closeKeyboard(ctx: Context, view: View) {
            (ctx.getSystemService(AppCompatActivity.INPUT_METHOD_SERVICE) as? InputMethodManager)!!.hideSoftInputFromWindow(view.windowToken, 0)
        }
    }
}