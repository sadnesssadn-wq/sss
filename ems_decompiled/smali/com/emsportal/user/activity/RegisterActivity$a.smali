.class public Lcom/emsportal/user/activity/RegisterActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/user/activity/RegisterActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/user/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/user/activity/RegisterActivity$a;->c:Lcom/emsportal/user/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/emsportal/user/activity/RegisterActivity$a;->c:Lcom/emsportal/user/activity/RegisterActivity;

    .line 1
    sget p2, Lcom/emsportal/user/activity/RegisterActivity;->f:I

    invoke-virtual {p1}, Lcom/emsportal/user/activity/RegisterActivity;->v()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
