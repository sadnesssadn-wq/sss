.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""


# instance fields
.field private circle1:Landroid/view/View;

.field private circle2:Landroid/view/View;

.field private circle3:Landroid/view/View;

.field private scaleDown:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_typing_circle1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle1:Landroid/view/View;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_typing_circle2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle2:Landroid/view/View;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_typing_circle3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle3:Landroid/view/View;

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string p2, "#66252b2e"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle1:Landroid/view/View;

    .line 1
    sget-object p3, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle2:Landroid/view/View;

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle3:Landroid/view/View;

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->scaleDown:Landroid/animation/AnimatorSet;

    return-object p0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->scaleDown:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle1:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 10

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->scaleDown:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->clearAnimation()V

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle1:Landroid/view/View;

    const/4 p2, 0x3

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    const-string v1, "scaleX"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle1:Landroid/view/View;

    new-array v2, p2, [F

    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v0, v5, p1

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle2:Landroid/view/View;

    new-array v5, p2, [F

    fill-array-data v5, :array_2

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle2:Landroid/view/View;

    new-array v7, p2, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v4, [Landroid/animation/Animator;

    aput-object v0, v8, v6

    aput-object v5, v8, p1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle3:Landroid/view/View;

    new-array v5, p2, [F

    fill-array-data v5, :array_4

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->circle3:Landroid/view/View;

    new-array v5, p2, [F

    fill-array-data v5, :array_5

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v0, v5, v6

    aput-object v1, v5, p1

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->scaleDown:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v2, p2, v6

    aput-object v7, p2, p1

    aput-object v3, p2, v4

    invoke-virtual {v5, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->scaleDown:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->scaleDown:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->scaleDown:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder$1;

    invoke-direct {p2, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->scaleDown:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
    .end array-data
.end method
