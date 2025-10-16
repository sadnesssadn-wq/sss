.class public final enum Lb/p/b/c$f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/p/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/p/b/c$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lb/p/b/c$f;

.field public static final enum d:Lb/p/b/c$f;

.field public static final enum e:Lb/p/b/c$f;

.field public static final synthetic f:[Lb/p/b/c$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lb/p/b/c$f;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/p/b/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/p/b/c$f;->c:Lb/p/b/c$f;

    new-instance v1, Lb/p/b/c$f;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/p/b/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/p/b/c$f;->d:Lb/p/b/c$f;

    new-instance v3, Lb/p/b/c$f;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb/p/b/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb/p/b/c$f;->e:Lb/p/b/c$f;

    const/4 v5, 0x3

    new-array v5, v5, [Lb/p/b/c$f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lb/p/b/c$f;->f:[Lb/p/b/c$f;

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

.method public static valueOf(Ljava/lang/String;)Lb/p/b/c$f;
    .locals 1

    const-class v0, Lb/p/b/c$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/p/b/c$f;

    return-object p0
.end method

.method public static values()[Lb/p/b/c$f;
    .locals 1

    sget-object v0, Lb/p/b/c$f;->f:[Lb/p/b/c$f;

    invoke-virtual {v0}, [Lb/p/b/c$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/p/b/c$f;

    return-object v0
.end method
