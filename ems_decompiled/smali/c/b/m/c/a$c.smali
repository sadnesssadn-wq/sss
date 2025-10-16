.class public Lc/b/m/c/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/c/a;->p(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/m/c/a;


# direct methods
.method public constructor <init>(Lc/b/m/c/a;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/a$c;->a:Lc/b/m/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    const-class v0, Lc/b/m/d/w;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/c/a$c;->a:Lc/b/m/c/a;

    .line 1
    iget-object v0, v0, Lc/b/m/c/a;->n:Lc/b/l/g0;

    .line 2
    invoke-virtual {v0, p1}, Lc/b/l/g0;->d(Ljava/util/List;)V

    iget-object v0, p0, Lc/b/m/c/a$c;->a:Lc/b/m/c/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, v0, Lc/b/m/c/a;->w:Z

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/m/d/w;

    invoke-virtual {v1}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/w;

    invoke-virtual {p1}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/c/a$c;->a:Lc/b/m/c/a;

    .line 5
    invoke-virtual {v0, v1, p1}, Lc/b/m/c/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/w;

    invoke-virtual {v0}, Lc/b/m/d/w;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/b/m/c/a$c;->a:Lc/b/m/c/a;

    iget-object v2, v2, Lc/b/m/c/a;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lc/b/m/c/a$c;->a:Lc/b/m/c/a;

    invoke-virtual {v0}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v1, v0}, Lc/b/m/c/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lc/b/m/c/a$c;->a:Lc/b/m/c/a;

    .line 9
    iget-object p1, p1, Lc/b/m/c/a;->g:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/c/a$c;->a:Lc/b/m/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
