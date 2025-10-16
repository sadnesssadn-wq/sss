.class public final synthetic Lc/d/a/a/j/t/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/u/b$a;


# instance fields
.field public final synthetic a:Lc/d/a/a/j/t/c;

.field public final synthetic b:Lc/d/a/a/j/j;

.field public final synthetic c:Lc/d/a/a/j/g;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/c;Lc/d/a/a/j/j;Lc/d/a/a/j/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/b;->a:Lc/d/a/a/j/t/c;

    iput-object p2, p0, Lc/d/a/a/j/t/b;->b:Lc/d/a/a/j/j;

    iput-object p3, p0, Lc/d/a/a/j/t/b;->c:Lc/d/a/a/j/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lc/d/a/a/j/t/b;->a:Lc/d/a/a/j/t/c;

    iget-object v1, p0, Lc/d/a/a/j/t/b;->b:Lc/d/a/a/j/j;

    iget-object v2, p0, Lc/d/a/a/j/t/b;->c:Lc/d/a/a/j/g;

    .line 1
    iget-object v3, v0, Lc/d/a/a/j/t/c;->d:Lc/d/a/a/j/t/i/s;

    invoke-interface {v3, v1, v2}, Lc/d/a/a/j/t/i/s;->i(Lc/d/a/a/j/j;Lc/d/a/a/j/g;)Lc/d/a/a/j/t/i/x;

    iget-object v0, v0, Lc/d/a/a/j/t/c;->a:Lc/d/a/a/j/t/h/s;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lc/d/a/a/j/t/h/s;->a(Lc/d/a/a/j/j;I)V

    const/4 v0, 0x0

    return-object v0
.end method
