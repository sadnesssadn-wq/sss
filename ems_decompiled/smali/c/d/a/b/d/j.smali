.class public final synthetic Lc/d/a/b/d/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/d/o;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/b/d/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/d/j;->c:Lc/d/a/b/d/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/d/j;->c:Lc/d/a/b/d/o;

    const/4 v1, 0x2

    const-string v2, "Service disconnected"

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/d/o;->a(ILjava/lang/String;)V

    return-void
.end method
