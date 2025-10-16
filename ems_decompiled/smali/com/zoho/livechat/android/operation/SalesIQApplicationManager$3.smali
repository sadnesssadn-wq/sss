.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->showScreenshotWindow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/utils/ImageUtils;->takeScreenshot(Landroid/view/View;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$300(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/app/Activity;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sput-object v0, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/zoho/livechat/android/R$layout;->siq_image_preview:I

    invoke-virtual {v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_imagepreview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/zoho/livechat/android/R$id;->siq_imgpreview_back:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/zoho/livechat/android/R$id;->siq_imagepreview_send_layout:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v7, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v7}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1
    sget-object v7, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget v5, Lcom/zoho/livechat/android/R$id;->siq_imagepreview_send_icon:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v7}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    sget v8, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_send:I

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lc/e/a/b/c$b;

    invoke-direct {v5}, Lc/e/a/b/c$b;-><init>()V

    .line 3
    iput-boolean v6, v5, Lc/e/a/b/c$b;->h:Z

    .line 4
    iput-boolean v6, v5, Lc/e/a/b/c$b;->i:Z

    .line 5
    iput-boolean v6, v5, Lc/e/a/b/c$b;->m:Z

    .line 6
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v6}, Lc/e/a/b/c$b;->a(Landroid/graphics/Bitmap$Config;)Lc/e/a/b/c$b;

    invoke-virtual {v5}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object v5

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v6

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v2, v5}, Lc/e/a/b/d;->c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceHeight()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceWidth()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x128

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "window"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$1;

    invoke-direct {v0, p0, v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$1;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;

    invoke-direct {v0, p0, v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$400(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobilisten"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object p1, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    :cond_1
    :goto_0
    return-void
.end method
