.class public final Lc/d/a/d/a/a/f;
.super Lc/d/a/d/a/a/d/l;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lc/d/a/d/a/a/d/m;

    const-string v1, "AppUpdateListenerRegistry"

    invoke-direct {v0, v1}, Lc/d/a/d/a/a/d/m;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lc/d/a/d/a/a/d/l;-><init>(Lc/d/a/d/a/a/d/m;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method
