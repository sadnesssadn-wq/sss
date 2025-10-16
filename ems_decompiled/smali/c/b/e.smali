.class public Lc/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/e;->c:Lcom/emsportal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/emsportal/MainActivity;->h:Lcom/emsportal/MainActivity;

    const-class v0, Lcom/emsportal/user/activity/LogInActivity;

    const/16 v1, 0x17

    invoke-static {p1, v0, v1}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    iget-object p1, p0, Lc/b/e;->c:Lcom/emsportal/MainActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/MainActivity;->c:Lb/b/k/g;

    .line 2
    invoke-virtual {p1}, Lb/b/k/q;->dismiss()V

    iget-object p1, p0, Lc/b/e;->c:Lcom/emsportal/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
