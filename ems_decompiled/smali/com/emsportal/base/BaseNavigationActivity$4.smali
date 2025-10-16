.class public Lcom/emsportal/base/BaseNavigationActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/emsportal/base/BaseNavigationActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/base/BaseNavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$4;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$4;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
