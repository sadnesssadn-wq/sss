.class public final Lc/e/a/b/o/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/e/a/b/o/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lc/e/a/b/q/a;Lc/e/a/b/m/f;)V
    .locals 2

    check-cast p2, Lc/e/a/b/q/c;

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    iget-object p2, p2, Lc/e/a/b/q/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 2
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const/4 p2, 0x5

    const/4 p3, 0x0

    const-string v0, "Can\'t set a bitmap into view. You should call ImageLoader on UI thread for it."

    .line 3
    invoke-static {p2, p3, v0, p1}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
