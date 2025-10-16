.class public abstract Lc/d/d/v/r/f/d/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/s/a;

.field public final b:Lc/d/d/v/r/f/d/s;


# direct methods
.method public constructor <init>(Lc/d/d/s/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/d/v/r/f/d/j;->a:Lc/d/d/s/a;

    new-instance v0, Lc/d/d/v/r/f/d/s;

    invoke-direct {v0, p1}, Lc/d/d/v/r/f/d/s;-><init>(Lc/d/d/s/a;)V

    iput-object v0, p0, Lc/d/d/v/r/f/d/j;->b:Lc/d/d/v/r/f/d/s;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
