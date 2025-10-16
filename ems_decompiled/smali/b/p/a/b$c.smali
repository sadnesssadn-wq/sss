.class public Lb/p/a/b$c;
.super Lb/o/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final c:Lb/o/y;


# instance fields
.field public a:Lb/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/i<",
            "Lb/p/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/p/a/b$c$a;

    invoke-direct {v0}, Lb/p/a/b$c$a;-><init>()V

    sput-object v0, Lb/p/a/b$c;->c:Lb/o/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/o/w;-><init>()V

    new-instance v0, Lb/f/i;

    invoke-direct {v0}, Lb/f/i;-><init>()V

    iput-object v0, p0, Lb/p/a/b$c;->a:Lb/f/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/p/a/b$c;->b:Z

    return-void
.end method


# virtual methods
.method public onCleared()V
    .locals 6

    invoke-super {p0}, Lb/o/w;->onCleared()V

    iget-object v0, p0, Lb/p/a/b$c;->a:Lb/f/i;

    invoke-virtual {v0}, Lb/f/i;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lb/p/a/b$c;->a:Lb/f/i;

    invoke-virtual {v3, v2}, Lb/f/i;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/p/a/b$a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lb/p/a/b$a;->k(Z)Lb/p/b/b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/p/a/b$c;->a:Lb/f/i;

    .line 1
    iget v2, v0, Lb/f/i;->e:I

    iget-object v3, v0, Lb/f/i;->d:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput v1, v0, Lb/f/i;->e:I

    return-void
.end method
