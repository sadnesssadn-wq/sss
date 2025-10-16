.class public final synthetic Lc/d/a/a/j/t/h/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/u/b$a;


# instance fields
.field public final synthetic a:Lc/d/a/a/j/t/i/s;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/i/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/b;->a:Lc/d/a/a/j/t/i/s;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/a/j/t/h/b;->a:Lc/d/a/a/j/t/i/s;

    invoke-interface {v0}, Lc/d/a/a/j/t/i/s;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
