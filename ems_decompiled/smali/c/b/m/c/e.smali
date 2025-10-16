.class public Lc/b/m/c/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lc/b/m/c/h;


# direct methods
.method public constructor <init>(Lc/b/m/c/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/e;->c:Lc/b/m/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 1

    iget-object v0, p0, Lc/b/m/c/e;->c:Lc/b/m/c/h;

    .line 1
    iget-object v0, v0, Lc/b/m/c/h;->f:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/w;

    iget-object p1, p0, Lc/b/m/c/e;->c:Lc/b/m/c/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
