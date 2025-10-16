.class public Lcom/zoho/livechat/android/utils/RoundedTopCorner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/e/a/b/o/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/utils/RoundedTopCorner$RoundedDrawable;
    }
.end annotation


# instance fields
.field public final cornerRadius:I

.field public final margin:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zoho/livechat/android/utils/RoundedTopCorner;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zoho/livechat/android/utils/RoundedTopCorner;->cornerRadius:I

    iput p2, p0, Lcom/zoho/livechat/android/utils/RoundedTopCorner;->margin:I

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lc/e/a/b/q/a;Lc/e/a/b/m/f;)V
    .locals 2

    instance-of p3, p2, Lc/e/a/b/q/b;

    if-eqz p3, :cond_0

    new-instance p3, Lcom/zoho/livechat/android/utils/RoundedTopCorner$RoundedDrawable;

    iget v0, p0, Lcom/zoho/livechat/android/utils/RoundedTopCorner;->cornerRadius:I

    iget v1, p0, Lcom/zoho/livechat/android/utils/RoundedTopCorner;->margin:I

    invoke-direct {p3, p1, v0, v1}, Lcom/zoho/livechat/android/utils/RoundedTopCorner$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    check-cast p2, Lc/e/a/b/q/c;

    invoke-virtual {p2, p3}, Lc/e/a/b/q/c;->b(Landroid/graphics/drawable/Drawable;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
