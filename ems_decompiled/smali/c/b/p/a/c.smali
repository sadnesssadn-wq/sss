.class public Lc/b/p/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/a/c;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    iget-object p1, p0, Lc/b/p/a/c;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 1
    sget v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->s:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/b/p/a/b;

    invoke-direct {v0, p1}, Lc/b/p/a/b;-><init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V

    const v1, 0x7f1002c2

    invoke-static {p1, v1, v0}, Lb/u/a;->m0(Landroid/content/Context;ILc/b/w/m;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/p/a/c;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
