.class public Lc/b/m/c/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/m/c/h;


# direct methods
.method public constructor <init>(Lc/b/m/c/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/g;->a:Lc/b/m/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    const-class v0, Lc/b/m/d/s;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/s;

    iget-object p1, p0, Lc/b/m/c/g;->a:Lc/b/m/c/h;

    .line 1
    sget v0, Lc/b/m/c/h;->p:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lc/b/m/c/h;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/c/g;->a:Lc/b/m/c/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
