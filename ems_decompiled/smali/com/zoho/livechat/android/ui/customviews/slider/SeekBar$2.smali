.class public Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->materialRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$2;->this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$2;->this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    const/4 v0, 0x0

    iput v0, p1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->material:F

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->access$000(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$2;->this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->access$000(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
