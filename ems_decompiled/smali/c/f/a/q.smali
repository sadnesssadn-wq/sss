.class public final enum Lc/f/a/q;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/f/a/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lc/f/a/q;

.field public static final enum e:Lc/f/a/q;

.field public static final enum f:Lc/f/a/q;

.field public static final synthetic g:[Lc/f/a/q;


# instance fields
.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lc/f/a/q;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lc/f/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/f/a/q;->d:Lc/f/a/q;

    new-instance v1, Lc/f/a/q;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lc/f/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc/f/a/q;->e:Lc/f/a/q;

    new-instance v4, Lc/f/a/q;

    const-string v6, "OFFLINE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lc/f/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lc/f/a/q;->f:Lc/f/a/q;

    const/4 v6, 0x3

    new-array v6, v6, [Lc/f/a/q;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lc/f/a/q;->g:[Lc/f/a/q;

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

    iput p3, p0, Lc/f/a/q;->c:I

    return-void
.end method

.method public static a(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lc/f/a/q;
    .locals 1

    const-class v0, Lc/f/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/f/a/q;

    return-object p0
.end method

.method public static values()[Lc/f/a/q;
    .locals 1

    sget-object v0, Lc/f/a/q;->g:[Lc/f/a/q;

    invoke-virtual {v0}, [Lc/f/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/f/a/q;

    return-object v0
.end method
