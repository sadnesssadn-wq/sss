.class public Lb/g/a/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lb/g/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/g/a/e<",
            "Lb/g/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/g/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/g/a/e<",
            "Lb/g/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lb/g/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/g/a/e<",
            "Lb/g/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Lb/g/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/g/a/e;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lb/g/a/e;-><init>(I)V

    iput-object v0, p0, Lb/g/a/c;->a:Lb/g/a/e;

    new-instance v0, Lb/g/a/e;

    invoke-direct {v0, v1}, Lb/g/a/e;-><init>(I)V

    iput-object v0, p0, Lb/g/a/c;->b:Lb/g/a/e;

    new-instance v0, Lb/g/a/e;

    invoke-direct {v0, v1}, Lb/g/a/e;-><init>(I)V

    iput-object v0, p0, Lb/g/a/c;->c:Lb/g/a/e;

    const/16 v0, 0x20

    new-array v0, v0, [Lb/g/a/g;

    iput-object v0, p0, Lb/g/a/c;->d:[Lb/g/a/g;

    return-void
.end method
