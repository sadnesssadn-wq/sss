.class public Lcom/emsportal/express/activity/request/DetailRequestActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/request/DetailRequestActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/request/DetailRequestActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/request/DetailRequestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$a;->c:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$a;->c:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    .line 1
    iget-object p2, p1, Lcom/emsportal/express/activity/request/DetailRequestActivity;->j:Landroid/widget/EditText;

    .line 2
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lcom/emsportal/express/activity/request/DetailRequestActivity;->m:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$a;->c:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    .line 5
    iget-object p2, p1, Lcom/emsportal/express/activity/request/DetailRequestActivity;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Lcom/emsportal/express/activity/request/DetailRequestActivity;->v(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
