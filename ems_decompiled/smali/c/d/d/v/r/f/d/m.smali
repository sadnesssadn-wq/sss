.class public final Lc/d/d/v/r/f/d/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/d/v/r/f/d/m$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lc/d/d/v/r/f/d/m$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/d/d/v/r/f/d/m;->a:I

    sget-object v0, Lc/d/d/v/r/f/d/m$a;->c:Lc/d/d/v/r/f/d/m$a;

    iput-object v0, p0, Lc/d/d/v/r/f/d/m;->b:Lc/d/d/v/r/f/d/m$a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lc/d/d/v/r/f/d/m;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lc/d/d/v/r/f/d/m;->a:I

    return-void
.end method
