.class public Lc/d/a/c/x/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/c/x/n;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/d/a/c/x/n;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/n;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/n$a;->c:Lc/d/a/c/x/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/d/a/c/x/n$a;->c:Lc/d/a/c/x/n;

    .line 1
    iget-object p1, p1, Lc/d/a/c/x/n;->c:Ljava/util/LinkedHashSet;

    .line 2
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/c/x/p;

    iget-object v1, p0, Lc/d/a/c/x/n$a;->c:Lc/d/a/c/x/n;

    .line 3
    iget-object v1, v1, Lc/d/a/c/x/n;->h:Lc/d/a/c/x/d;

    invoke-interface {v1}, Lc/d/a/c/x/d;->o()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lc/d/a/c/x/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/d/a/c/x/n$a;->c:Lc/d/a/c/x/n;

    invoke-virtual {p1}, Lb/m/d/l;->dismiss()V

    return-void
.end method
