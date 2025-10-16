.class public Lc/b/o/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lc/b/o/d;


# direct methods
.method public constructor <init>(Lc/b/o/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/f;->c:Lc/b/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/b/o/f;->c:Lc/b/o/d;

    .line 1
    sget-object v0, Lc/b/o/d;->v:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/b/o/b;

    invoke-direct {v0, p1}, Lc/b/o/b;-><init>(Lc/b/o/d;)V

    .line 3
    sget p1, Lc/b/s/a;->d:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v1, Lcom/emsportal/AppController;->c:Lcom/emsportal/AppController;

    .line 5
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/u/a;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_ime"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_type"

    const-string v2, "android"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "http://ws.ems.com.vn/api/v1/auth/logout"

    invoke-static {v2, p1, v1, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    .line 6
    iget-object p1, p0, Lc/b/o/f;->c:Lc/b/o/d;

    .line 7
    iget-object p1, p1, Lc/b/o/d;->t:Lb/b/k/g;

    .line 8
    invoke-virtual {p1}, Lb/b/k/q;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/b/o/f;->c:Lc/b/o/d;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
