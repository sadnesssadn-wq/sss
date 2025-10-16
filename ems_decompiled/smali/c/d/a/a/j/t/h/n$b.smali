.class public final enum Lc/d/a/a/j/t/h/n$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/j/t/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/a/j/t/h/n$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/d/a/a/j/t/h/n$b;

.field public static final enum d:Lc/d/a/a/j/t/h/n$b;

.field public static final enum e:Lc/d/a/a/j/t/h/n$b;

.field public static final synthetic f:[Lc/d/a/a/j/t/h/n$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc/d/a/a/j/t/h/n$b;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/d/a/a/j/t/h/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/a/j/t/h/n$b;->c:Lc/d/a/a/j/t/h/n$b;

    new-instance v1, Lc/d/a/a/j/t/h/n$b;

    const-string v3, "DEVICE_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/d/a/a/j/t/h/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/d/a/a/j/t/h/n$b;->d:Lc/d/a/a/j/t/h/n$b;

    new-instance v3, Lc/d/a/a/j/t/h/n$b;

    const-string v5, "DEVICE_CHARGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/d/a/a/j/t/h/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/d/a/a/j/t/h/n$b;->e:Lc/d/a/a/j/t/h/n$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lc/d/a/a/j/t/h/n$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc/d/a/a/j/t/h/n$b;->f:[Lc/d/a/a/j/t/h/n$b;

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

.method public static valueOf(Ljava/lang/String;)Lc/d/a/a/j/t/h/n$b;
    .locals 1

    const-class v0, Lc/d/a/a/j/t/h/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/a/a/j/t/h/n$b;

    return-object p0
.end method

.method public static values()[Lc/d/a/a/j/t/h/n$b;
    .locals 1

    sget-object v0, Lc/d/a/a/j/t/h/n$b;->f:[Lc/d/a/a/j/t/h/n$b;

    invoke-virtual {v0}, [Lc/d/a/a/j/t/h/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/a/j/t/h/n$b;

    return-object v0
.end method
