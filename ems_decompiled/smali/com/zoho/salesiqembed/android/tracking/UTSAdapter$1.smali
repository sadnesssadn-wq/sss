.class public final Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$000()V

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$100()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$108()I

    :cond_0
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$300()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->timedTask:Ljava/lang/Runnable;

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$200()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$100()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
