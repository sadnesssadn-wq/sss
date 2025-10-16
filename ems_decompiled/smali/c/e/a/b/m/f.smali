.class public final enum Lc/e/a/b/m/f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/e/a/b/m/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/e/a/b/m/f;

.field public static final enum d:Lc/e/a/b/m/f;

.field public static final enum e:Lc/e/a/b/m/f;

.field public static final synthetic f:[Lc/e/a/b/m/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc/e/a/b/m/f;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/e/a/b/m/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/e/a/b/m/f;->c:Lc/e/a/b/m/f;

    new-instance v1, Lc/e/a/b/m/f;

    const-string v3, "DISC_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/e/a/b/m/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/e/a/b/m/f;->d:Lc/e/a/b/m/f;

    new-instance v3, Lc/e/a/b/m/f;

    const-string v5, "MEMORY_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/e/a/b/m/f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/e/a/b/m/f;->e:Lc/e/a/b/m/f;

    const/4 v5, 0x3

    new-array v5, v5, [Lc/e/a/b/m/f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc/e/a/b/m/f;->f:[Lc/e/a/b/m/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/e/a/b/m/f;
    .locals 1

    const-class v0, Lc/e/a/b/m/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/e/a/b/m/f;

    return-object p0
.end method

.method public static values()[Lc/e/a/b/m/f;
    .locals 1

    sget-object v0, Lc/e/a/b/m/f;->f:[Lc/e/a/b/m/f;

    invoke-virtual {v0}, [Lc/e/a/b/m/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/a/b/m/f;

    return-object v0
.end method
