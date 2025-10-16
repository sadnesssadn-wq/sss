.class public final Lc/d/a/d/a/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/d/a/a/d/c;


# instance fields
.field public final a:Lc/d/a/d/a/a/d/c;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/d/a/a/g;->a:Lc/d/a/d/a/a/d/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/d/a/d/a/a/g;->a:Lc/d/a/d/a/a/d/c;

    check-cast v0, Lc/d/a/d/a/a/l;

    invoke-virtual {v0}, Lc/d/a/d/a/a/l;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lc/d/a/d/a/a/f;

    invoke-direct {v1, v0}, Lc/d/a/d/a/a/f;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
