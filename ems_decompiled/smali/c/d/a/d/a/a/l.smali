.class public final Lc/d/a/d/a/a/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/d/a/a/d/c;


# instance fields
.field public final a:Lc/d/a/d/a/a/j;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/d/a/a/l;->a:Lc/d/a/d/a/a/j;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lc/d/a/d/a/a/l;->a:Lc/d/a/d/a/a/j;

    .line 1
    iget-object v0, v0, Lc/d/a/d/a/a/j;->a:Landroid/content/Context;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/d/a/d/a/a/l;->a:Lc/d/a/d/a/a/j;

    .line 1
    iget-object v0, v0, Lc/d/a/d/a/a/j;->a:Landroid/content/Context;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
