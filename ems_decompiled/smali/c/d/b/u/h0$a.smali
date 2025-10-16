.class public Lc/d/b/u/h0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/b/u/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/d/b/u/e0;Lc/d/b/u/g0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "gcm.n.title"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/b/u/h0$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->g(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lc/d/b/u/h0$a;->a(Lc/d/b/u/e0;Ljava/lang/String;)[Ljava/lang/String;

    const-string p2, "gcm.n.body"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/b/u/h0$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->g(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lc/d/b/u/h0$a;->a(Lc/d/b/u/e0;Ljava/lang/String;)[Ljava/lang/String;

    const-string p2, "gcm.n.icon"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "gcm.n.sound2"

    .line 2
    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "gcm.n.sound"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string p2, "gcm.n.tag"

    .line 3
    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "gcm.n.color"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "gcm.n.click_action"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "gcm.n.android_channel_id"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lc/d/b/u/e0;->e()Landroid/net/Uri;

    const-string p2, "gcm.n.image"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "gcm.n.ticker"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "gcm.n.notification_priority"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    const-string p2, "gcm.n.visibility"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    const-string p2, "gcm.n.notification_count"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    const-string p2, "gcm.n.sticky"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    const-string p2, "gcm.n.local_only"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    const-string p2, "gcm.n.default_sound"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    const-string p2, "gcm.n.default_vibrate_timings"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    const-string p2, "gcm.n.default_light_settings"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    const-string p2, "gcm.n.event_time"

    invoke-virtual {p1, p2}, Lc/d/b/u/e0;->h(Ljava/lang/String;)Ljava/lang/Long;

    invoke-virtual {p1}, Lc/d/b/u/e0;->d()[I

    invoke-virtual {p1}, Lc/d/b/u/e0;->k()[J

    return-void
.end method

.method public static a(Lc/d/b/u/e0;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lc/d/b/u/e0;->f(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
