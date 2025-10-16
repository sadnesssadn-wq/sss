.class public final enum Lc/f/a/t$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/f/a/t$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/f/a/t$e;

.field public static final enum d:Lc/f/a/t$e;

.field public static final enum e:Lc/f/a/t$e;

.field public static final synthetic f:[Lc/f/a/t$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc/f/a/t$e;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/f/a/t$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/f/a/t$e;->c:Lc/f/a/t$e;

    new-instance v1, Lc/f/a/t$e;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/f/a/t$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/f/a/t$e;->d:Lc/f/a/t$e;

    new-instance v3, Lc/f/a/t$e;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/f/a/t$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/f/a/t$e;->e:Lc/f/a/t$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lc/f/a/t$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc/f/a/t$e;->f:[Lc/f/a/t$e;

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

.method public static valueOf(Ljava/lang/String;)Lc/f/a/t$e;
    .locals 1

    const-class v0, Lc/f/a/t$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/f/a/t$e;

    return-object p0
.end method

.method public static values()[Lc/f/a/t$e;
    .locals 1

    sget-object v0, Lc/f/a/t$e;->f:[Lc/f/a/t$e;

    invoke-virtual {v0}, [Lc/f/a/t$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/f/a/t$e;

    return-object v0
.end method
