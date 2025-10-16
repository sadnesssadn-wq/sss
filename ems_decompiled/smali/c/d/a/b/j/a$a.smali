.class public final Lc/d/a/b/j/a$a;
.super Lc/d/a/b/i/j/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Lc/d/a/b/p/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/m<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/p/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/m<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/i/j/g;-><init>()V

    iput-object p1, p0, Lc/d/a/b/j/a$a;->c:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final D(Lc/d/a/b/i/j/d;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lc/d/a/b/i/j/d;->c:Lcom/google/android/gms/common/api/Status;

    .line 2
    iget-object v0, p0, Lc/d/a/b/j/a$a;->c:Lc/d/a/b/p/m;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K0(Lcom/google/android/gms/common/api/Status;Lc/d/a/b/p/m;)V

    return-void
.end method
