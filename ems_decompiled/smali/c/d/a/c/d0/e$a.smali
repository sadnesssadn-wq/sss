.class public Lc/d/a/c/d0/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/p/i/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/c/d0/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/d/a/c/d0/e;


# direct methods
.method public constructor <init>(Lc/d/a/c/d0/e;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/d0/e$a;->c:Lc/d/a/c/d0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/p/i/g;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p1, p0, Lc/d/a/c/d0/e$a;->c:Lc/d/a/c/d0/e;

    .line 1
    iget-object p1, p1, Lc/d/a/c/d0/e;->i:Lc/d/a/c/d0/e$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v0, p0, Lc/d/a/c/d0/e$a;->c:Lc/d/a/c/d0/e;

    invoke-virtual {v0}, Lc/d/a/c/d0/e;->getSelectedItemId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lc/d/a/c/d0/e$a;->c:Lc/d/a/c/d0/e;

    .line 3
    iget-object p1, p1, Lc/d/a/c/d0/e;->i:Lc/d/a/c/d0/e$b;

    .line 4
    check-cast p1, Lcom/emsportal/MainActivity$a;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget-object p1, p0, Lc/d/a/c/d0/e$a;->c:Lc/d/a/c/d0/e;

    .line 7
    iget-object p1, p1, Lc/d/a/c/d0/e;->h:Lc/d/a/c/d0/e$c;

    if-eqz p1, :cond_1

    .line 8
    check-cast p1, Lcom/emsportal/MainActivity;

    .line 9
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/emsportal/MainActivity;->x(I)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lb/b/p/i/g;)V
    .locals 0

    return-void
.end method
