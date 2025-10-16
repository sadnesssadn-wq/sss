.class public Lcom/emsportal/user/activity/LogInActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/user/activity/LogInActivity;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/user/activity/LogInActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/LogInActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/user/activity/LogInActivity$b;->c:Lcom/emsportal/user/activity/LogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Lcom/emsportal/user/activity/LogInActivity$b;->c:Lcom/emsportal/user/activity/LogInActivity;

    const-string p2, "android.permission.READ_PHONE_STATE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1ae

    invoke-static {p1, p2, v0}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
