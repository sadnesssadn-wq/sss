.class public Lc/b/o/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/o/y;


# direct methods
.method public constructor <init>(Lc/b/o/y;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/z;->a:Lc/b/o/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 0

    iget-object p1, p0, Lc/b/o/z;->a:Lc/b/o/y;

    .line 1
    iget-object p1, p1, Lc/b/o/y;->d:Lc/b/i/e;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
