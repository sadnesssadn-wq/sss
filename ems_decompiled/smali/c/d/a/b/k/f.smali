.class public Lc/d/a/b/k/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/a/b/k/i/e;


# direct methods
.method public constructor <init>(Lc/d/a/b/k/i/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/k/i/e;

    iput-object p1, p0, Lc/d/a/b/k/f;->a:Lc/d/a/b/k/i/e;

    return-void
.end method
