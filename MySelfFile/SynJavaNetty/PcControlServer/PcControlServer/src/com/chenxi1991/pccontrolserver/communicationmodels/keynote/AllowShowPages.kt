package com.chenxi1991.pccontrolserver.communicationmodels.keynote

import com.chenxi1991.pccontrolserver.communicationmodels.BaseModel

class AllowShowPages(ip:String,port:Int): BaseModel() {
    var mIp: String? = null
    var mPort: Int? = null

    init {
        mFlag = BaseModel.Flag.ALLOW_SHOW_PAGES
        mIp = ip
        mPort = port
    }

    override fun toByteArray(): ByteArray? {
        val temp = mIp + SEPREATOR + mPort.toString()
        val tempArray = temp.toByteArray()
        val values = ByteArray(1 + tempArray.size)
        values[0] = mFlag!!.value
        System.arraycopy(tempArray, 0, values, 1, tempArray.size)
        mData = values
        return mData
    }
}