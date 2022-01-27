package com.design.ui

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.AppCompatButton
import com.design.R
import com.design.util.ActUtil
import com.design.util.UiUtil

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        clickListener()
    }

    private fun clickListener() {
        (findViewById<AppCompatButton>(R.id.btnLinear)).setOnClickListener {
            it.isEnabled = false
            UiUtil.avoidMultipleClicks(it)
            ActUtil.oLinear(this)
        }
        (findViewById<AppCompatButton>(R.id.btnConstraint)).setOnClickListener {
            it.isEnabled = false
            UiUtil.avoidMultipleClicks(it)
            ActUtil.oConstraint(this)
        }
    }
}