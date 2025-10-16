.class public Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 1
    iget-object v1, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->i:Lc/b/p/e/a;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->h:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 4
    iget-object v1, v1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->i:Lc/b/p/e/a;

    .line 5
    invoke-virtual {v1, v0}, Lc/b/p/e/a;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    invoke-static {v0}, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->v(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
