.class public Lb/i/e/i;
.super Lb/i/e/m;
.source ""


# instance fields
.field public e:Landroid/graphics/Bitmap;

.field public f:Landroidx/core/graphics/drawable/IconCompat;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/i/e/m;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lb/i/e/g;)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    check-cast p1, Lb/i/e/n;

    .line 1
    iget-object v2, p1, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    .line 2
    invoke-direct {v1, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v2, p0, Lb/i/e/m;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    iget-object v2, p0, Lb/i/e/i;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    iget-boolean v2, p0, Lb/i/e/i;->g:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lb/i/e/i;->f:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x17

    if-lt v0, v4, :cond_1

    .line 3
    iget-object p1, p1, Lb/i/e/n;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->g(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->d()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lb/i/e/i;->f:Landroidx/core/graphics/drawable/IconCompat;

    .line 7
    iget v5, p1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    if-lt v0, v4, :cond_2

    iget-object p1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_2
    if-ne v5, v2, :cond_3

    iget-object p1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    if-ne v5, v0, :cond_4

    iget-object p1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getBitmap() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_5
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 9
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lb/i/e/m;->d:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lb/i/e/m;->c:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_7
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    return-object v0
.end method

.method public d(Landroid/graphics/Bitmap;)Lb/i/e/i;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lb/i/e/i;->f:Landroidx/core/graphics/drawable/IconCompat;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/i/e/i;->g:Z

    return-object p0
.end method
