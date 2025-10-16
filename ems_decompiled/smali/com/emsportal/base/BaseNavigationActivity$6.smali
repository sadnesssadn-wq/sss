.class public Lcom/emsportal/base/BaseNavigationActivity$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/base/BaseNavigationActivity;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/emsportal/base/BaseNavigationActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/base/BaseNavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$6;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$6;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-static {p1}, Lcom/emsportal/base/BaseNavigationActivity;->n(Lcom/emsportal/base/BaseNavigationActivity;)Lb/b/k/g;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/k/q;->dismiss()V

    return-void
.end method
