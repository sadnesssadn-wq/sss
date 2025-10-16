.class public final enum Lc/e/a/b/m/h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/e/a/b/m/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/e/a/b/m/h;

.field public static final enum d:Lc/e/a/b/m/h;

.field public static final synthetic e:[Lc/e/a/b/m/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc/e/a/b/m/h;

    const-string v1, "FIT_INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/e/a/b/m/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/e/a/b/m/h;->c:Lc/e/a/b/m/h;

    new-instance v1, Lc/e/a/b/m/h;

    const-string v3, "CROP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/e/a/b/m/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/e/a/b/m/h;->d:Lc/e/a/b/m/h;

    const/4 v3, 0x2

    new-array v3, v3, [Lc/e/a/b/m/h;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lc/e/a/b/m/h;->e:[Lc/e/a/b/m/h;

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

.method public static valueOf(Ljava/lang/String;)Lc/e/a/b/m/h;
    .locals 1

    const-class v0, Lc/e/a/b/m/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/e/a/b/m/h;

    return-object p0
.end method

.method public static values()[Lc/e/a/b/m/h;
    .locals 1

    sget-object v0, Lc/e/a/b/m/h;->e:[Lc/e/a/b/m/h;

    invoke-virtual {v0}, [Lc/e/a/b/m/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/a/b/m/h;

    return-object v0
.end method
