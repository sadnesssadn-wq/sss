.class public Lb/r/d/a0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/d/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Lb/i/l/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/l/c<",
            "Lb/r/d/a0$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView$j$c;

.field public c:Landroidx/recyclerview/widget/RecyclerView$j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/i/l/c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lb/i/l/c;-><init>(I)V

    sput-object v0, Lb/r/d/a0$a;->d:Lb/i/l/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb/r/d/a0$a;
    .locals 1

    sget-object v0, Lb/r/d/a0$a;->d:Lb/i/l/c;

    invoke-virtual {v0}, Lb/i/l/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/r/d/a0$a;

    if-nez v0, :cond_0

    new-instance v0, Lb/r/d/a0$a;

    invoke-direct {v0}, Lb/r/d/a0$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(Lb/r/d/a0$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/r/d/a0$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/r/d/a0$a;->b:Landroidx/recyclerview/widget/RecyclerView$j$c;

    iput-object v0, p0, Lb/r/d/a0$a;->c:Landroidx/recyclerview/widget/RecyclerView$j$c;

    sget-object v0, Lb/r/d/a0$a;->d:Lb/i/l/c;

    invoke-virtual {v0, p0}, Lb/i/l/c;->b(Ljava/lang/Object;)Z

    return-void
.end method
