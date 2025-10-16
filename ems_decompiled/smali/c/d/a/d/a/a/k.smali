.class public final Lc/d/a/d/a/a/k;
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

    iput-object p1, p0, Lc/d/a/d/a/a/k;->a:Lc/d/a/d/a/a/d/c;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/d/a/d/a/a/k;->a:Lc/d/a/d/a/a/d/c;

    invoke-interface {v0}, Lc/d/a/d/a/a/d/c;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/d/a/a/h;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
