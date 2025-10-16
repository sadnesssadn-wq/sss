.class public final enum Lc/d/a/b/i/e/l4;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/b1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/i/e/l4;",
        ">;",
        "Lc/d/a/b/i/e/b1;"
    }
.end annotation


# static fields
.field public static final enum d:Lc/d/a/b/i/e/l4;

.field public static final enum e:Lc/d/a/b/i/e/l4;

.field public static final enum f:Lc/d/a/b/i/e/l4;

.field public static final enum g:Lc/d/a/b/i/e/l4;

.field public static final enum h:Lc/d/a/b/i/e/l4;

.field public static final synthetic i:[Lc/d/a/b/i/e/l4;


# instance fields
.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lc/d/a/b/i/e/l4;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc/d/a/b/i/e/l4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/d/a/b/i/e/l4;->d:Lc/d/a/b/i/e/l4;

    new-instance v1, Lc/d/a/b/i/e/l4;

    const-string v3, "UNMETERED_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lc/d/a/b/i/e/l4;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc/d/a/b/i/e/l4;->e:Lc/d/a/b/i/e/l4;

    new-instance v3, Lc/d/a/b/i/e/l4;

    const-string v5, "UNMETERED_OR_DAILY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lc/d/a/b/i/e/l4;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc/d/a/b/i/e/l4;->f:Lc/d/a/b/i/e/l4;

    new-instance v5, Lc/d/a/b/i/e/l4;

    const-string v7, "FAST_IF_RADIO_AWAKE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lc/d/a/b/i/e/l4;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lc/d/a/b/i/e/l4;->g:Lc/d/a/b/i/e/l4;

    new-instance v7, Lc/d/a/b/i/e/l4;

    const-string v9, "NEVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lc/d/a/b/i/e/l4;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lc/d/a/b/i/e/l4;->h:Lc/d/a/b/i/e/l4;

    const/4 v9, 0x5

    new-array v9, v9, [Lc/d/a/b/i/e/l4;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lc/d/a/b/i/e/l4;->i:[Lc/d/a/b/i/e/l4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc/d/a/b/i/e/l4;->c:I

    return-void
.end method

.method public static values()[Lc/d/a/b/i/e/l4;
    .locals 1

    sget-object v0, Lc/d/a/b/i/e/l4;->i:[Lc/d/a/b/i/e/l4;

    invoke-virtual {v0}, [Lc/d/a/b/i/e/l4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/i/e/l4;

    return-object v0
.end method


# virtual methods
.method public final zzc()I
    .locals 1

    iget v0, p0, Lc/d/a/b/i/e/l4;->c:I

    return v0
.end method
