.class public final synthetic Lc/d/a/a/j/t/h/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/u/b$a;


# instance fields
.field public final synthetic a:Lc/d/a/a/j/t/h/o;

.field public final synthetic b:Lc/d/a/a/j/j;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/h/o;Lc/d/a/a/j/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/g;->a:Lc/d/a/a/j/t/h/o;

    iput-object p2, p0, Lc/d/a/a/j/t/h/g;->b:Lc/d/a/a/j/j;

    iput p3, p0, Lc/d/a/a/j/t/h/g;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/d/a/a/j/t/h/g;->a:Lc/d/a/a/j/t/h/o;

    iget-object v1, p0, Lc/d/a/a/j/t/h/g;->b:Lc/d/a/a/j/j;

    iget v2, p0, Lc/d/a/a/j/t/h/g;->c:I

    .line 1
    iget-object v0, v0, Lc/d/a/a/j/t/h/o;->d:Lc/d/a/a/j/t/h/s;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lc/d/a/a/j/t/h/s;->a(Lc/d/a/a/j/j;I)V

    const/4 v0, 0x0

    return-object v0
.end method
