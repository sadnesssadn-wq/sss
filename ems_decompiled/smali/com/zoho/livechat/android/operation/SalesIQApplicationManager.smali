.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private appactivity:Landroid/app/Activity;

.field private application:Landroid/app/Application;

.field private curactivity:Landroid/app/Activity;

.field private device_height:I

.field private device_width:I

.field private embed_props_requested:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handled_notifications:Z

.field private handler:Landroid/os/Handler;

.field private isChatBubbleShown:Z

.field private isKeyboardVisible:Z

.field private isLauncherClicked:Z

.field private launcherMarginBufferValue:I

.field private launcherProperties:Lcom/zoho/commons/LauncherProperties;

.field private mbedablehiddenlist:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/zoho/livechat/android/MbedableComponent;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private onInitCompleteListener:Lcom/zoho/commons/OnInitCompleteListener;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private screenshotlist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private screenshotpreviewlist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private titleviews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotpreviewlist:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->titleviews:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->mbedablehiddenlist:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isKeyboardVisible:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isChatBubbleShown:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->embed_props_requested:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->handled_notifications:Z

    iput v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_width:I

    iput v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_height:I

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isLauncherClicked:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->application:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1
    sget-object v0, Lb/o/r;->k:Lb/o/r;

    .line 2
    iget-object v0, v0, Lb/o/r;->h:Lb/o/k;

    .line 3
    new-instance v1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V

    invoke-virtual {v0, v1}, Lb/o/k;->a(Lb/o/i;)V

    new-instance v0, Lcom/zoho/livechat/android/comm/NetworkBroadcast;

    invoke-direct {v0}, Lcom/zoho/livechat/android/comm/NetworkBroadcast;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->embed_props_requested:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->embed_props_requested:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->handled_notifications:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)I
    .locals 0

    iget p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_width:I

    return p0
.end method

.method public static synthetic access$102(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->handled_notifications:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->animateLauncherView(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->moveViewtoOutside(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeScreenshotWindow(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotpreviewlist:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isLauncherClicked:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isLauncherClicked:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->moveViewtoOriginal(Landroid/view/View;)V

    return-void
.end method

.method private addKeyBoardListener(Landroid/app/Activity;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private animateLauncherView(Landroid/view/View;IIII)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    const-string p3, "x"

    invoke-static {p3, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v1, v0, [I

    aput p4, v1, v2

    aput p5, v1, p2

    const-string p4, "y"

    invoke-static {p4, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    new-array p5, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, p5, v2

    aput-object p4, p5, p2

    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$8;

    invoke-direct {p3, p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$8;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$9;

    invoke-direct {p1, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$9;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p3, 0xa0

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private isStart(I)Z
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_width:I

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadOperatorImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 10

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_bot_default:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_user_default:I

    :goto_0
    invoke-static {p3, v0}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Lc/e/a/b/c$b;

    invoke-direct {v0}, Lc/e/a/b/c$b;-><init>()V

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lc/e/a/b/c$b;->h:Z

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v0, Lc/e/a/b/c$b;->i:Z

    .line 3
    iput-boolean v1, v0, Lc/e/a/b/c$b;->m:Z

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lc/e/a/b/c$b;->a(Landroid/graphics/Bitmap$Config;)Lc/e/a/b/c$b;

    new-instance v1, Lc/e/a/b/o/b;

    invoke-direct {v1}, Lc/e/a/b/o/b;-><init>()V

    invoke-virtual {v0, v1}, Lc/e/a/b/c$b;->c(Lc/e/a/b/o/a;)Lc/e/a/b/c$b;

    invoke-virtual {v0}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object v6

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_3

    sget-object p3, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {p3, p2}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isUserImageAvailable(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object p2

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v6}, Lc/e/a/b/d;->c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    invoke-static {p2}, Lcom/zoho/livechat/android/constants/UrlUtil;->getOperatorImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v8, 0x0

    new-instance p3, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$7;

    move-object v2, p3

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$7;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Ljava/io/File;Landroid/widget/ImageView;Lc/e/a/b/c;Ljava/lang/String;)V

    move-object v2, p2

    move-wide v3, v8

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;JLcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private moveViewtoOriginal(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "translationX"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private moveViewtoOutside(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [F

    iget v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherMarginBufferValue:I

    if-eqz p3, :cond_0

    neg-int v1, v1

    :cond_0
    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "translationX"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    const/high16 p1, 0x41b00000    # 22.0f

    if-eqz p3, :cond_1

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    invoke-static {p1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p1

    invoke-direct {p3, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p1, 0x800035

    goto :goto_0

    :cond_1
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    invoke-static {p1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p1

    invoke-direct {p3, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p1, 0x800033

    :goto_0
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private removeAllScreenshotPreviewWindows()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotpreviewlist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotpreviewlist:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotpreviewlist:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotpreviewlist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private removeAllScreenshotWindows(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    const/4 p1, 0x0

    sput-object p1, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private removeKeyBoardListener(Landroid/app/Activity;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private removeScreenshotWindow(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showScreenshotWindow(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_screenshot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v2, "#8A000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_screenshot_parent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1
    sget-object v3, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget v1, Lcom/zoho/livechat/android/R$id;->siq_screenshot_take_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_screenshot:I

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_screenshot_cancel_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    const-string v3, "#E6ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_screenshot_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$2;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$2;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_screenshot_take:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->screenshotlist:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public canShowBubble(Landroid/app/Activity;)Z
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->getFloatingChatButtonVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isSupportedVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isEmbedAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat;->deskportalname:Ljava/lang/String;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isKeyboardVisible:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isHideEmbed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "salesiq_appkey"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "salesiq_accesskey"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isChatAllowed()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isHideChatbutton()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getMbedablehiddenlist()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/MbedableComponent;->CHAT:Lcom/zoho/livechat/android/MbedableComponent;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v1
.end method

.method public getAppActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->appactivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->application:Landroid/app/Application;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMbedablehiddenlist()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Lcom/zoho/livechat/android/MbedableComponent;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->mbedablehiddenlist:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getOnInitCompleteListener()Lcom/zoho/commons/OnInitCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->onInitCompleteListener:Lcom/zoho/commons/OnInitCompleteListener;

    return-object v0
.end method

.method public getTitleViews()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->titleviews:Ljava/util/HashMap;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->mbedablehiddenlist:Ljava/util/Hashtable;

    sget-object v1, Lcom/zoho/livechat/android/MbedableComponent;->CHAT:Lcom/zoho/livechat/android/MbedableComponent;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeKeyBoardListener(Landroid/app/Activity;)V

    :try_start_0
    sget-boolean v0, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeScreenshotWindow(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotPreviewWindows()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    :try_start_0
    sget-boolean v0, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->showScreenshotWindow(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->canShowBubble(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->refreshChatBubble()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    instance-of v0, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->appactivity:Landroid/app/Activity;

    :cond_2
    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->addKeyBoardListener(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/commons/LauncherProperties;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v2, v0, v2

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide v6, 0x3fc3333333333333L    # 0.15

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    :try_start_1
    iput-boolean v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isKeyboardVisible:Z

    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isKeyboardVisible:Z

    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->canShowBubble(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isChatBubbleShown:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->refreshChatBubble()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public refreshChatBubble()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->isSdkOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zoho/livechat/android/config/LDChatConfig;->getView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v1, "chatbutton"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "chatbadge"

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_7

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->canShowBubble(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->canShowOperatorImageOnBubble()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->isBotAttender()Z

    move-result v2

    invoke-direct {p0, v1, v3, v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->loadOperatorImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v2}, Lcom/zoho/commons/LauncherProperties;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_chat_floating:I

    invoke-static {v2, v3}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isChatBubbleShown:Z

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->canShowBubble(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->showChatBubble(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_8
    :goto_4
    return-void
.end method

.method public removeAllScreenshotWindows()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows(Z)V

    return-void
.end method

.method public removeChatView(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->isSdkOpened()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/config/LDChatConfig;->getView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {p1}, Lcom/zoho/livechat/android/config/LDChatConfig;->removeView(Landroid/app/Activity;)V

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isChatBubbleShown:Z

    throw v1

    :catch_0
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/zoho/livechat/android/config/LDChatConfig;->removeView(Landroid/app/Activity;)V

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isChatBubbleShown:Z

    return-void
.end method

.method public removeTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->titleviews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAppActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->appactivity:Landroid/app/Activity;

    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    return-void
.end method

.method public setCurrentPageTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->titleviews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLauncherProperties(Lcom/zoho/commons/LauncherProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->canShowBubble(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->curactivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->showChatBubble(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setOnInitCompleteListener(Lcom/zoho/commons/OnInitCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->onInitCompleteListener:Lcom/zoho/commons/OnInitCompleteListener;

    return-void
.end method

.method public showChatBubble(Landroid/app/Activity;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zoho/commons/LauncherProperties;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLauncherMode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/zoho/commons/LauncherProperties;-><init>(I)V

    iput-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v4}, Lcom/zoho/commons/LauncherProperties;->getMode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_1
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    iput v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherMarginBufferValue:I

    move v3, v2

    goto :goto_0

    :goto_1
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v9, "chatbutton"

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v9, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v9}, Lcom/zoho/commons/LauncherProperties;->getBackgroundColor()I

    move-result v9

    if-nez v9, :cond_2

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v9

    :cond_2
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1
    sget-object v9, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->canShowOperatorImageOnBubble()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->isBotAttender()Z

    move-result v2

    invoke-direct {p0, v4, v9, v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->loadOperatorImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v2}, Lcom/zoho/commons/LauncherProperties;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_4

    sget v2, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_chat_floating:I

    invoke-static {p1, v2}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_4
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "chatbadge"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v9}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v10

    invoke-static {v9}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v9

    invoke-direct {v4, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v9, 0x800035

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v8, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v8}, Lcom/zoho/commons/LauncherProperties;->getBadgeBackgroundColor()I

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "#D6473F"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    :cond_5
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 3
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v2, v4}, Lb/i/m/r;->D(Landroid/view/View;F)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v4}, Lcom/zoho/commons/LauncherProperties;->getBadgeTextColor()I

    move-result v4

    const/4 v8, -0x1

    if-nez v4, :cond_6

    const/4 v4, -0x1

    :cond_6
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v4

    const/4 v9, 0x0

    if-lez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->windowManager:Landroid/view/WindowManager;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_width:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_height:I

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->params:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const v4, 0x800033

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v3}, Lcom/zoho/commons/LauncherProperties;->getMode()I

    move-result v3

    if-ne v3, v5, :cond_b

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLauncherPosition()[I

    move-result-object v3

    aget v4, v3, v9

    if-eq v4, v8, :cond_9

    aget v4, v3, v9

    invoke-direct {p0, v4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isStart(I)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    aput v9, v3, v9

    goto :goto_5

    :cond_9
    :goto_4
    iget v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_width:I

    aput v4, v3, v9

    :goto_5
    aget v4, v3, v6

    if-ne v4, v8, :cond_a

    iget v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_height:I

    mul-int/lit8 v4, v4, 0x14

    div-int/lit8 v4, v4, 0x64

    aput v4, v3, v6

    :cond_a
    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->setLauncherPosition([I)V

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v4}, Lcom/zoho/commons/LauncherProperties;->getX()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v4}, Lcom/zoho/commons/LauncherProperties;->getY()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isStart(I)Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->moveViewtoOutside(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLauncherPosition()[I

    move-result-object v3

    aget v4, v3, v9

    if-eq v4, v8, :cond_c

    aget v3, v3, v6

    if-ne v3, v8, :cond_d

    :cond_c
    new-array v3, v5, [I

    iget v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_width:I

    aput v4, v3, v9

    iget v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_height:I

    aput v4, v3, v6

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->setLauncherPosition([I)V

    :cond_d
    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->params:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_width:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->device_height:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v0, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v6, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->isChatBubbleShown:Z

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/config/LDChatConfig;->addView(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->launcherProperties:Lcom/zoho/commons/LauncherProperties;

    invoke-virtual {v3}, Lcom/zoho/commons/LauncherProperties;->getMode()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v5, :cond_e

    new-instance v3, Landroid/view/GestureDetector;

    new-instance v5, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$4;

    invoke-direct {v5, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$4;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V

    invoke-direct {v3, p1, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$6;

    invoke-direct {p1, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$6;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_7
    return-void
.end method

.method public syncWithServer()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isSupportedVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAppID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/ApiUtil;->getAnnonID()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->embed_props_requested:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "emprops"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->embed_props_requested:Z

    new-instance v0, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;

    invoke-direct {v0}, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;->request()V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lcom/zoho/livechat/android/utils/GetAppkeyDetailUtil;

    invoke-direct {v0}, Lcom/zoho/livechat/android/utils/GetAppkeyDetailUtil;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_1
    return-void
.end method
