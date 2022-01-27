package com.design.util

import android.content.Context
import android.content.Intent
import com.design.ui.design.ConstraintActivity
import com.design.ui.design.LinearActivity

class ActUtil {
    companion object {
        fun oLinear(ctx: Context) {
            val intent = Intent(ctx, LinearActivity::class.java)
            ctx.startActivity(intent)
        }

        fun oConstraint(ctx: Context) {
            val intent = Intent(ctx, ConstraintActivity::class.java)
            ctx.startActivity(intent)
        }
    }
}